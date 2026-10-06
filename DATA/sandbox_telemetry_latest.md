# sandbox_telemetry_parse — 2026-10-06 20:05:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=575210 lines=1266
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1261 |
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
| `chromeBrowserPssKb` | {'int': 1261} |
| `chromeGpuPssKb` | {'int': 1261} |
| `chromeOtherPssKb` | {'int': 1261} |
| `chromeProcesses` | {'int': 1261} |
| `chromeProfiles` | {'int': 1261} |
| `chromeRendererMaxPssKb` | {'int': 1261} |
| `chromeRendererPssKb` | {'int': 1261} |
| `chromeRenderers` | {'int': 1261} |
| `chromeTabs` | {'int': 1261} |
| `chromeTabsProbedProfiles` | {'int': 1261} |
| `chromeUtilityPssKb` | {'int': 1261} |
| `desktopPssKb` | {'int': 1261} |
| `hostPssKb` | {'int': 1261} |
| `kind` | {'str': 1261} |
| `memAvailableKb` | {'int': 1261} |
| `memTotalKb` | {'int': 1261} |
| `otherPssKb` | {'int': 1261} |
| `processes` | {'int': 1261} |
| `pssFallbackProcesses` | {'int': 1261} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
