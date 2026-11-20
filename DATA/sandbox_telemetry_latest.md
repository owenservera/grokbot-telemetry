# sandbox_telemetry_parse — 2026-11-20 11:00:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1686347 lines=3738
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3727 |
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
| `chromeBrowserPssKb` | {'int': 3727} |
| `chromeGpuPssKb` | {'int': 3727} |
| `chromeOtherPssKb` | {'int': 3727} |
| `chromeProcesses` | {'int': 3727} |
| `chromeProfiles` | {'int': 3727} |
| `chromeRendererMaxPssKb` | {'int': 3727} |
| `chromeRendererPssKb` | {'int': 3727} |
| `chromeRenderers` | {'int': 3727} |
| `chromeTabs` | {'int': 3727} |
| `chromeTabsProbedProfiles` | {'int': 3727} |
| `chromeUtilityPssKb` | {'int': 3727} |
| `desktopPssKb` | {'int': 3727} |
| `hostPssKb` | {'int': 3727} |
| `kind` | {'str': 3727} |
| `memAvailableKb` | {'int': 3727} |
| `memTotalKb` | {'int': 3727} |
| `otherPssKb` | {'int': 3727} |
| `processes` | {'int': 3727} |
| `pssFallbackProcesses` | {'int': 3727} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
