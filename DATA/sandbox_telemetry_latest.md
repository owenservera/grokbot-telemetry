# sandbox_telemetry_parse — 2026-11-09 19:16:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=806003 lines=1789
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1780 |
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
| `chromeBrowserPssKb` | {'int': 1780} |
| `chromeGpuPssKb` | {'int': 1780} |
| `chromeOtherPssKb` | {'int': 1780} |
| `chromeProcesses` | {'int': 1780} |
| `chromeProfiles` | {'int': 1780} |
| `chromeRendererMaxPssKb` | {'int': 1780} |
| `chromeRendererPssKb` | {'int': 1780} |
| `chromeRenderers` | {'int': 1780} |
| `chromeTabs` | {'int': 1780} |
| `chromeTabsProbedProfiles` | {'int': 1780} |
| `chromeUtilityPssKb` | {'int': 1780} |
| `desktopPssKb` | {'int': 1780} |
| `hostPssKb` | {'int': 1780} |
| `kind` | {'str': 1780} |
| `memAvailableKb` | {'int': 1780} |
| `memTotalKb` | {'int': 1780} |
| `otherPssKb` | {'int': 1780} |
| `processes` | {'int': 1780} |
| `pssFallbackProcesses` | {'int': 1780} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
