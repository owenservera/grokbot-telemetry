# sandbox_telemetry_parse — 2026-11-24 05:14:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2144069 lines=4753
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4738 |
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
| `chromeBrowserPssKb` | {'int': 4738} |
| `chromeGpuPssKb` | {'int': 4738} |
| `chromeOtherPssKb` | {'int': 4738} |
| `chromeProcesses` | {'int': 4738} |
| `chromeProfiles` | {'int': 4738} |
| `chromeRendererMaxPssKb` | {'int': 4738} |
| `chromeRendererPssKb` | {'int': 4738} |
| `chromeRenderers` | {'int': 4738} |
| `chromeTabs` | {'int': 4738} |
| `chromeTabsProbedProfiles` | {'int': 4738} |
| `chromeUtilityPssKb` | {'int': 4738} |
| `desktopPssKb` | {'int': 4738} |
| `hostPssKb` | {'int': 4738} |
| `kind` | {'str': 4738} |
| `memAvailableKb` | {'int': 4738} |
| `memTotalKb` | {'int': 4738} |
| `otherPssKb` | {'int': 4738} |
| `processes` | {'int': 4738} |
| `pssFallbackProcesses` | {'int': 4738} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
