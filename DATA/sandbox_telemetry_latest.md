# sandbox_telemetry_parse — 2026-11-19 14:10:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1305791 lines=2895
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2886 |
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
| `chromeBrowserPssKb` | {'int': 2886} |
| `chromeGpuPssKb` | {'int': 2886} |
| `chromeOtherPssKb` | {'int': 2886} |
| `chromeProcesses` | {'int': 2886} |
| `chromeProfiles` | {'int': 2886} |
| `chromeRendererMaxPssKb` | {'int': 2886} |
| `chromeRendererPssKb` | {'int': 2886} |
| `chromeRenderers` | {'int': 2886} |
| `chromeTabs` | {'int': 2886} |
| `chromeTabsProbedProfiles` | {'int': 2886} |
| `chromeUtilityPssKb` | {'int': 2886} |
| `desktopPssKb` | {'int': 2886} |
| `hostPssKb` | {'int': 2886} |
| `kind` | {'str': 2886} |
| `memAvailableKb` | {'int': 2886} |
| `memTotalKb` | {'int': 2886} |
| `otherPssKb` | {'int': 2886} |
| `processes` | {'int': 2886} |
| `pssFallbackProcesses` | {'int': 2886} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
