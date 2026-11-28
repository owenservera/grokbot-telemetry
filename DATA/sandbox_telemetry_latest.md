# sandbox_telemetry_parse — 2026-11-28 20:37:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1048543 lines=2324
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2316 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 2316} |
| `chromeGpuPssKb` | {'int': 2316} |
| `chromeOtherPssKb` | {'int': 2316} |
| `chromeProcesses` | {'int': 2316} |
| `chromeProfiles` | {'int': 2316} |
| `chromeRendererMaxPssKb` | {'int': 2316} |
| `chromeRendererPssKb` | {'int': 2316} |
| `chromeRenderers` | {'int': 2316} |
| `chromeTabs` | {'int': 2316} |
| `chromeTabsProbedProfiles` | {'int': 2316} |
| `chromeUtilityPssKb` | {'int': 2316} |
| `desktopPssKb` | {'int': 2316} |
| `hostPssKb` | {'int': 2316} |
| `kind` | {'str': 2316} |
| `memAvailableKb` | {'int': 2316} |
| `memTotalKb` | {'int': 2316} |
| `otherPssKb` | {'int': 2316} |
| `processes` | {'int': 2316} |
| `pssFallbackProcesses` | {'int': 2316} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
