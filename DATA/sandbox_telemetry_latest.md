# sandbox_telemetry_parse — 2026-10-26 18:32:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=73767 lines=167
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 162 |
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
| `chromeBrowserPssKb` | {'int': 162} |
| `chromeGpuPssKb` | {'int': 162} |
| `chromeOtherPssKb` | {'int': 162} |
| `chromeProcesses` | {'int': 162} |
| `chromeProfiles` | {'int': 162} |
| `chromeRendererMaxPssKb` | {'int': 162} |
| `chromeRendererPssKb` | {'int': 162} |
| `chromeRenderers` | {'int': 162} |
| `chromeTabs` | {'int': 162} |
| `chromeTabsProbedProfiles` | {'int': 162} |
| `chromeUtilityPssKb` | {'int': 162} |
| `desktopPssKb` | {'int': 162} |
| `hostPssKb` | {'int': 162} |
| `kind` | {'str': 162} |
| `memAvailableKb` | {'int': 162} |
| `memTotalKb` | {'int': 162} |
| `otherPssKb` | {'int': 162} |
| `processes` | {'int': 162} |
| `pssFallbackProcesses` | {'int': 162} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
