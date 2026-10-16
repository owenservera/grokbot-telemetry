# sandbox_telemetry_parse — 2026-10-16 22:11:45 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=871247 lines=3256
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2158 |
| `memory_sample` | 1089 |
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
| `chromeBrowserPssKb` | {'int': 1089} |
| `chromeGpuPssKb` | {'int': 1089} |
| `chromeOtherPssKb` | {'int': 1089} |
| `chromeProcesses` | {'int': 1089} |
| `chromeProfiles` | {'int': 1089} |
| `chromeRendererMaxPssKb` | {'int': 1089} |
| `chromeRendererPssKb` | {'int': 1089} |
| `chromeRenderers` | {'int': 1089} |
| `chromeTabs` | {'int': 1089} |
| `chromeTabsProbedProfiles` | {'int': 1089} |
| `chromeUtilityPssKb` | {'int': 1089} |
| `desktopPssKb` | {'int': 1089} |
| `hostPssKb` | {'int': 1089} |
| `kind` | {'str': 1089} |
| `memAvailableKb` | {'int': 1089} |
| `memTotalKb` | {'int': 1089} |
| `otherPssKb` | {'int': 1089} |
| `processes` | {'int': 1089} |
| `pssFallbackProcesses` | {'int': 1089} |

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
| `cpuMillicores` | {'int': 2155} |
| `display` | {'int': 2158} |
| `kind` | {'str': 2158} |
| `processes` | {'int': 2158} |
| `pssKb` | {'int': 2158} |
| `rendererMaxPssKb` | {'int': 2158} |
| `renderers` | {'int': 2158} |
| `tabs` | {'int': 2157} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
