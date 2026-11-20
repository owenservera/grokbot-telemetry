# sandbox_telemetry_parse — 2026-11-20 12:19:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1710304 lines=3791
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3780 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3780} |
| `chromeGpuPssKb` | {'int': 3780} |
| `chromeOtherPssKb` | {'int': 3780} |
| `chromeProcesses` | {'int': 3780} |
| `chromeProfiles` | {'int': 3780} |
| `chromeRendererMaxPssKb` | {'int': 3780} |
| `chromeRendererPssKb` | {'int': 3780} |
| `chromeRenderers` | {'int': 3780} |
| `chromeTabs` | {'int': 3780} |
| `chromeTabsProbedProfiles` | {'int': 3780} |
| `chromeUtilityPssKb` | {'int': 3780} |
| `desktopPssKb` | {'int': 3780} |
| `hostPssKb` | {'int': 3780} |
| `kind` | {'str': 3780} |
| `memAvailableKb` | {'int': 3780} |
| `memTotalKb` | {'int': 3780} |
| `otherPssKb` | {'int': 3780} |
| `processes` | {'int': 3780} |
| `pssFallbackProcesses` | {'int': 3780} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
