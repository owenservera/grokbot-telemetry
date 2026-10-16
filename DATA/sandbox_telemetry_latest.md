# sandbox_telemetry_parse — 2026-10-16 14:21:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=527646 lines=1972
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1302 |
| `memory_sample` | 661 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 661} |
| `chromeGpuPssKb` | {'int': 661} |
| `chromeOtherPssKb` | {'int': 661} |
| `chromeProcesses` | {'int': 661} |
| `chromeProfiles` | {'int': 661} |
| `chromeRendererMaxPssKb` | {'int': 661} |
| `chromeRendererPssKb` | {'int': 661} |
| `chromeRenderers` | {'int': 661} |
| `chromeTabs` | {'int': 661} |
| `chromeTabsProbedProfiles` | {'int': 661} |
| `chromeUtilityPssKb` | {'int': 661} |
| `desktopPssKb` | {'int': 661} |
| `hostPssKb` | {'int': 661} |
| `kind` | {'str': 661} |
| `memAvailableKb` | {'int': 661} |
| `memTotalKb` | {'int': 661} |
| `otherPssKb` | {'int': 661} |
| `processes` | {'int': 661} |
| `pssFallbackProcesses` | {'int': 661} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 1299} |
| `display` | {'int': 1302} |
| `kind` | {'str': 1302} |
| `processes` | {'int': 1302} |
| `pssKb` | {'int': 1302} |
| `rendererMaxPssKb` | {'int': 1302} |
| `renderers` | {'int': 1302} |
| `tabs` | {'int': 1301} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
