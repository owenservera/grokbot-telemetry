# sandbox_telemetry_parse — 2026-10-16 03:16:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=33497 lines=124
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 70 |
| `memory_sample` | 45 |
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
| `chromeBrowserPssKb` | {'int': 45} |
| `chromeGpuPssKb` | {'int': 45} |
| `chromeOtherPssKb` | {'int': 45} |
| `chromeProcesses` | {'int': 45} |
| `chromeProfiles` | {'int': 45} |
| `chromeRendererMaxPssKb` | {'int': 45} |
| `chromeRendererPssKb` | {'int': 45} |
| `chromeRenderers` | {'int': 45} |
| `chromeTabs` | {'int': 45} |
| `chromeTabsProbedProfiles` | {'int': 45} |
| `chromeUtilityPssKb` | {'int': 45} |
| `desktopPssKb` | {'int': 45} |
| `hostPssKb` | {'int': 45} |
| `kind` | {'str': 45} |
| `memAvailableKb` | {'int': 45} |
| `memTotalKb` | {'int': 45} |
| `otherPssKb` | {'int': 45} |
| `processes` | {'int': 45} |
| `pssFallbackProcesses` | {'int': 45} |

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
| `cpuMillicores` | {'int': 67} |
| `display` | {'int': 70} |
| `kind` | {'str': 70} |
| `processes` | {'int': 70} |
| `pssKb` | {'int': 70} |
| `rendererMaxPssKb` | {'int': 70} |
| `renderers` | {'int': 70} |
| `tabs` | {'int': 69} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
