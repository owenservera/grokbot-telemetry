# sandbox_telemetry_parse — 2026-11-19 10:40:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1232517 lines=2733
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2724 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 2724} |
| `chromeGpuPssKb` | {'int': 2724} |
| `chromeOtherPssKb` | {'int': 2724} |
| `chromeProcesses` | {'int': 2724} |
| `chromeProfiles` | {'int': 2724} |
| `chromeRendererMaxPssKb` | {'int': 2724} |
| `chromeRendererPssKb` | {'int': 2724} |
| `chromeRenderers` | {'int': 2724} |
| `chromeTabs` | {'int': 2724} |
| `chromeTabsProbedProfiles` | {'int': 2724} |
| `chromeUtilityPssKb` | {'int': 2724} |
| `desktopPssKb` | {'int': 2724} |
| `hostPssKb` | {'int': 2724} |
| `kind` | {'str': 2724} |
| `memAvailableKb` | {'int': 2724} |
| `memTotalKb` | {'int': 2724} |
| `otherPssKb` | {'int': 2724} |
| `processes` | {'int': 2724} |
| `pssFallbackProcesses` | {'int': 2724} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
