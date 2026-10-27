# sandbox_telemetry_parse — 2026-10-27 03:40:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=301084 lines=669
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 664 |
| `boot_stage` | 3 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 664} |
| `chromeGpuPssKb` | {'int': 664} |
| `chromeOtherPssKb` | {'int': 664} |
| `chromeProcesses` | {'int': 664} |
| `chromeProfiles` | {'int': 664} |
| `chromeRendererMaxPssKb` | {'int': 664} |
| `chromeRendererPssKb` | {'int': 664} |
| `chromeRenderers` | {'int': 664} |
| `chromeTabs` | {'int': 664} |
| `chromeTabsProbedProfiles` | {'int': 664} |
| `chromeUtilityPssKb` | {'int': 664} |
| `desktopPssKb` | {'int': 664} |
| `hostPssKb` | {'int': 664} |
| `kind` | {'str': 664} |
| `memAvailableKb` | {'int': 664} |
| `memTotalKb` | {'int': 664} |
| `otherPssKb` | {'int': 664} |
| `processes` | {'int': 664} |
| `pssFallbackProcesses` | {'int': 664} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
