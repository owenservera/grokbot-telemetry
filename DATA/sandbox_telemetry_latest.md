# sandbox_telemetry_parse — 2026-10-06 11:34:30 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=344930 lines=761
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 756 |
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
| `chromeBrowserPssKb` | {'int': 756} |
| `chromeGpuPssKb` | {'int': 756} |
| `chromeOtherPssKb` | {'int': 756} |
| `chromeProcesses` | {'int': 756} |
| `chromeProfiles` | {'int': 756} |
| `chromeRendererMaxPssKb` | {'int': 756} |
| `chromeRendererPssKb` | {'int': 756} |
| `chromeRenderers` | {'int': 756} |
| `chromeTabs` | {'int': 756} |
| `chromeTabsProbedProfiles` | {'int': 756} |
| `chromeUtilityPssKb` | {'int': 756} |
| `desktopPssKb` | {'int': 756} |
| `hostPssKb` | {'int': 756} |
| `kind` | {'str': 756} |
| `memAvailableKb` | {'int': 756} |
| `memTotalKb` | {'int': 756} |
| `otherPssKb` | {'int': 756} |
| `processes` | {'int': 756} |
| `pssFallbackProcesses` | {'int': 756} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
