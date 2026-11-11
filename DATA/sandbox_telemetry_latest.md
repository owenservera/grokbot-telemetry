# sandbox_telemetry_parse — 2026-11-11 12:02:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1619982 lines=3588
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3579 |
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
| `chromeBrowserPssKb` | {'int': 3579} |
| `chromeGpuPssKb` | {'int': 3579} |
| `chromeOtherPssKb` | {'int': 3579} |
| `chromeProcesses` | {'int': 3579} |
| `chromeProfiles` | {'int': 3579} |
| `chromeRendererMaxPssKb` | {'int': 3579} |
| `chromeRendererPssKb` | {'int': 3579} |
| `chromeRenderers` | {'int': 3579} |
| `chromeTabs` | {'int': 3579} |
| `chromeTabsProbedProfiles` | {'int': 3579} |
| `chromeUtilityPssKb` | {'int': 3579} |
| `desktopPssKb` | {'int': 3579} |
| `hostPssKb` | {'int': 3579} |
| `kind` | {'str': 3579} |
| `memAvailableKb` | {'int': 3579} |
| `memTotalKb` | {'int': 3579} |
| `otherPssKb` | {'int': 3579} |
| `processes` | {'int': 3579} |
| `pssFallbackProcesses` | {'int': 3579} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
