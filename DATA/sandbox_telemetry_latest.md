# sandbox_telemetry_parse — 2026-10-07 14:55:01 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1085197 lines=2384
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2379 |
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
| `chromeBrowserPssKb` | {'int': 2379} |
| `chromeGpuPssKb` | {'int': 2379} |
| `chromeOtherPssKb` | {'int': 2379} |
| `chromeProcesses` | {'int': 2379} |
| `chromeProfiles` | {'int': 2379} |
| `chromeRendererMaxPssKb` | {'int': 2379} |
| `chromeRendererPssKb` | {'int': 2379} |
| `chromeRenderers` | {'int': 2379} |
| `chromeTabs` | {'int': 2379} |
| `chromeTabsProbedProfiles` | {'int': 2379} |
| `chromeUtilityPssKb` | {'int': 2379} |
| `desktopPssKb` | {'int': 2379} |
| `hostPssKb` | {'int': 2379} |
| `kind` | {'str': 2379} |
| `memAvailableKb` | {'int': 2379} |
| `memTotalKb` | {'int': 2379} |
| `otherPssKb` | {'int': 2379} |
| `processes` | {'int': 2379} |
| `pssFallbackProcesses` | {'int': 2379} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
