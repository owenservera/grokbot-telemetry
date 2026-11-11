# sandbox_telemetry_parse — 2026-11-11 01:46:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1421428 lines=3149
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3140 |
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
| `chromeBrowserPssKb` | {'int': 3140} |
| `chromeGpuPssKb` | {'int': 3140} |
| `chromeOtherPssKb` | {'int': 3140} |
| `chromeProcesses` | {'int': 3140} |
| `chromeProfiles` | {'int': 3140} |
| `chromeRendererMaxPssKb` | {'int': 3140} |
| `chromeRendererPssKb` | {'int': 3140} |
| `chromeRenderers` | {'int': 3140} |
| `chromeTabs` | {'int': 3140} |
| `chromeTabsProbedProfiles` | {'int': 3140} |
| `chromeUtilityPssKb` | {'int': 3140} |
| `desktopPssKb` | {'int': 3140} |
| `hostPssKb` | {'int': 3140} |
| `kind` | {'str': 3140} |
| `memAvailableKb` | {'int': 3140} |
| `memTotalKb` | {'int': 3140} |
| `otherPssKb` | {'int': 3140} |
| `processes` | {'int': 3140} |
| `pssFallbackProcesses` | {'int': 3140} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
