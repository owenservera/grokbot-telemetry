# sandbox_telemetry_parse — 2026-11-12 16:14:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2216050 lines=4905
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4896 |
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
| `chromeBrowserPssKb` | {'int': 4896} |
| `chromeGpuPssKb` | {'int': 4896} |
| `chromeOtherPssKb` | {'int': 4896} |
| `chromeProcesses` | {'int': 4896} |
| `chromeProfiles` | {'int': 4896} |
| `chromeRendererMaxPssKb` | {'int': 4896} |
| `chromeRendererPssKb` | {'int': 4896} |
| `chromeRenderers` | {'int': 4896} |
| `chromeTabs` | {'int': 4896} |
| `chromeTabsProbedProfiles` | {'int': 4896} |
| `chromeUtilityPssKb` | {'int': 4896} |
| `desktopPssKb` | {'int': 4896} |
| `hostPssKb` | {'int': 4896} |
| `kind` | {'str': 4896} |
| `memAvailableKb` | {'int': 4896} |
| `memTotalKb` | {'int': 4896} |
| `otherPssKb` | {'int': 4896} |
| `processes` | {'int': 4896} |
| `pssFallbackProcesses` | {'int': 4896} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
