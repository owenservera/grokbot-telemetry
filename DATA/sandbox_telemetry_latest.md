# sandbox_telemetry_parse — 2026-11-17 11:32:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=369530 lines=823
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 816 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 816} |
| `chromeGpuPssKb` | {'int': 816} |
| `chromeOtherPssKb` | {'int': 816} |
| `chromeProcesses` | {'int': 816} |
| `chromeProfiles` | {'int': 816} |
| `chromeRendererMaxPssKb` | {'int': 816} |
| `chromeRendererPssKb` | {'int': 816} |
| `chromeRenderers` | {'int': 816} |
| `chromeTabs` | {'int': 816} |
| `chromeTabsProbedProfiles` | {'int': 816} |
| `chromeUtilityPssKb` | {'int': 816} |
| `desktopPssKb` | {'int': 816} |
| `hostPssKb` | {'int': 816} |
| `kind` | {'str': 816} |
| `memAvailableKb` | {'int': 816} |
| `memTotalKb` | {'int': 816} |
| `otherPssKb` | {'int': 816} |
| `processes` | {'int': 816} |
| `pssFallbackProcesses` | {'int': 816} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
