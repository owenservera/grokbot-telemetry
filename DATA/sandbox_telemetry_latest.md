# sandbox_telemetry_parse — 2026-11-25 05:51:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2615419 lines=5795
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5780 |
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
| `chromeBrowserPssKb` | {'int': 5780} |
| `chromeGpuPssKb` | {'int': 5780} |
| `chromeOtherPssKb` | {'int': 5780} |
| `chromeProcesses` | {'int': 5780} |
| `chromeProfiles` | {'int': 5780} |
| `chromeRendererMaxPssKb` | {'int': 5780} |
| `chromeRendererPssKb` | {'int': 5780} |
| `chromeRenderers` | {'int': 5780} |
| `chromeTabs` | {'int': 5780} |
| `chromeTabsProbedProfiles` | {'int': 5780} |
| `chromeUtilityPssKb` | {'int': 5780} |
| `desktopPssKb` | {'int': 5780} |
| `hostPssKb` | {'int': 5780} |
| `kind` | {'str': 5780} |
| `memAvailableKb` | {'int': 5780} |
| `memTotalKb` | {'int': 5780} |
| `otherPssKb` | {'int': 5780} |
| `processes` | {'int': 5780} |
| `pssFallbackProcesses` | {'int': 5780} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
