# sandbox_telemetry_parse — 2026-10-16 10:38:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=366370 lines=1369
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 900 |
| `memory_sample` | 460 |
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
| `chromeBrowserPssKb` | {'int': 460} |
| `chromeGpuPssKb` | {'int': 460} |
| `chromeOtherPssKb` | {'int': 460} |
| `chromeProcesses` | {'int': 460} |
| `chromeProfiles` | {'int': 460} |
| `chromeRendererMaxPssKb` | {'int': 460} |
| `chromeRendererPssKb` | {'int': 460} |
| `chromeRenderers` | {'int': 460} |
| `chromeTabs` | {'int': 460} |
| `chromeTabsProbedProfiles` | {'int': 460} |
| `chromeUtilityPssKb` | {'int': 460} |
| `desktopPssKb` | {'int': 460} |
| `hostPssKb` | {'int': 460} |
| `kind` | {'str': 460} |
| `memAvailableKb` | {'int': 460} |
| `memTotalKb` | {'int': 460} |
| `otherPssKb` | {'int': 460} |
| `processes` | {'int': 460} |
| `pssFallbackProcesses` | {'int': 460} |

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
| `cpuMillicores` | {'int': 897} |
| `display` | {'int': 900} |
| `kind` | {'str': 900} |
| `processes` | {'int': 900} |
| `pssKb` | {'int': 900} |
| `rendererMaxPssKb` | {'int': 900} |
| `renderers` | {'int': 900} |
| `tabs` | {'int': 899} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
