# sandbox_telemetry_parse — 2026-10-16 02:20:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1183777 lines=2649
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2601 |
| `chrome_profile_sample` | 39 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |
| `process_crash` | 1 |

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
| `chromeBrowserPssKb` | {'int': 2601} |
| `chromeGpuPssKb` | {'int': 2601} |
| `chromeOtherPssKb` | {'int': 2601} |
| `chromeProcesses` | {'int': 2601} |
| `chromeProfiles` | {'int': 2601} |
| `chromeRendererMaxPssKb` | {'int': 2601} |
| `chromeRendererPssKb` | {'int': 2601} |
| `chromeRenderers` | {'int': 2601} |
| `chromeTabs` | {'int': 2601} |
| `chromeTabsProbedProfiles` | {'int': 2601} |
| `chromeUtilityPssKb` | {'int': 2601} |
| `desktopPssKb` | {'int': 2601} |
| `hostPssKb` | {'int': 2601} |
| `kind` | {'str': 2601} |
| `memAvailableKb` | {'int': 2601} |
| `memTotalKb` | {'int': 2601} |
| `otherPssKb` | {'int': 2601} |
| `processes` | {'int': 2601} |
| `pssFallbackProcesses` | {'int': 2601} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 38} |
| `display` | {'int': 39} |
| `kind` | {'str': 39} |
| `processes` | {'int': 39} |
| `pssKb` | {'int': 39} |
| `rendererMaxPssKb` | {'int': 39} |
| `renderers` | {'int': 39} |
| `tabs` | {'int': 39} |

### `process_crash`

| key | types |
|-----|-------|
| `binary` | {'str': 1} |
| `count` | {'int': 1} |
| `kind` | {'str': 1} |
| `signal` | {'str': 1} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
