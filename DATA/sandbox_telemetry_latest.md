# sandbox_telemetry_parse — 2026-11-12 14:03:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2161690 lines=4785
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4776 |
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
| `chromeBrowserPssKb` | {'int': 4776} |
| `chromeGpuPssKb` | {'int': 4776} |
| `chromeOtherPssKb` | {'int': 4776} |
| `chromeProcesses` | {'int': 4776} |
| `chromeProfiles` | {'int': 4776} |
| `chromeRendererMaxPssKb` | {'int': 4776} |
| `chromeRendererPssKb` | {'int': 4776} |
| `chromeRenderers` | {'int': 4776} |
| `chromeTabs` | {'int': 4776} |
| `chromeTabsProbedProfiles` | {'int': 4776} |
| `chromeUtilityPssKb` | {'int': 4776} |
| `desktopPssKb` | {'int': 4776} |
| `hostPssKb` | {'int': 4776} |
| `kind` | {'str': 4776} |
| `memAvailableKb` | {'int': 4776} |
| `memTotalKb` | {'int': 4776} |
| `otherPssKb` | {'int': 4776} |
| `processes` | {'int': 4776} |
| `pssFallbackProcesses` | {'int': 4776} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
