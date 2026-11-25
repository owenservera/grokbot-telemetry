# sandbox_telemetry_parse — 2026-11-25 02:29:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2553478 lines=5658
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5643 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 5643} |
| `chromeGpuPssKb` | {'int': 5643} |
| `chromeOtherPssKb` | {'int': 5643} |
| `chromeProcesses` | {'int': 5643} |
| `chromeProfiles` | {'int': 5643} |
| `chromeRendererMaxPssKb` | {'int': 5643} |
| `chromeRendererPssKb` | {'int': 5643} |
| `chromeRenderers` | {'int': 5643} |
| `chromeTabs` | {'int': 5643} |
| `chromeTabsProbedProfiles` | {'int': 5643} |
| `chromeUtilityPssKb` | {'int': 5643} |
| `desktopPssKb` | {'int': 5643} |
| `hostPssKb` | {'int': 5643} |
| `kind` | {'str': 5643} |
| `memAvailableKb` | {'int': 5643} |
| `memTotalKb` | {'int': 5643} |
| `otherPssKb` | {'int': 5643} |
| `processes` | {'int': 5643} |
| `pssFallbackProcesses` | {'int': 5643} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
