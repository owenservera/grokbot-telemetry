# sandbox_telemetry_parse — 2026-11-25 18:13:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2865056 lines=6347
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6332 |
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
| `chromeBrowserPssKb` | {'int': 6332} |
| `chromeGpuPssKb` | {'int': 6332} |
| `chromeOtherPssKb` | {'int': 6332} |
| `chromeProcesses` | {'int': 6332} |
| `chromeProfiles` | {'int': 6332} |
| `chromeRendererMaxPssKb` | {'int': 6332} |
| `chromeRendererPssKb` | {'int': 6332} |
| `chromeRenderers` | {'int': 6332} |
| `chromeTabs` | {'int': 6332} |
| `chromeTabsProbedProfiles` | {'int': 6332} |
| `chromeUtilityPssKb` | {'int': 6332} |
| `desktopPssKb` | {'int': 6332} |
| `hostPssKb` | {'int': 6332} |
| `kind` | {'str': 6332} |
| `memAvailableKb` | {'int': 6332} |
| `memTotalKb` | {'int': 6332} |
| `otherPssKb` | {'int': 6332} |
| `processes` | {'int': 6332} |
| `pssFallbackProcesses` | {'int': 6332} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
