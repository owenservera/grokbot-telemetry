# sandbox_telemetry_parse — 2026-11-10 18:08:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1258513 lines=2789
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2780 |
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
| `chromeBrowserPssKb` | {'int': 2780} |
| `chromeGpuPssKb` | {'int': 2780} |
| `chromeOtherPssKb` | {'int': 2780} |
| `chromeProcesses` | {'int': 2780} |
| `chromeProfiles` | {'int': 2780} |
| `chromeRendererMaxPssKb` | {'int': 2780} |
| `chromeRendererPssKb` | {'int': 2780} |
| `chromeRenderers` | {'int': 2780} |
| `chromeTabs` | {'int': 2780} |
| `chromeTabsProbedProfiles` | {'int': 2780} |
| `chromeUtilityPssKb` | {'int': 2780} |
| `desktopPssKb` | {'int': 2780} |
| `hostPssKb` | {'int': 2780} |
| `kind` | {'str': 2780} |
| `memAvailableKb` | {'int': 2780} |
| `memTotalKb` | {'int': 2780} |
| `otherPssKb` | {'int': 2780} |
| `processes` | {'int': 2780} |
| `pssFallbackProcesses` | {'int': 2780} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
