# sandbox_telemetry_parse — 2026-11-12 16:22:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2219221 lines=4912
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4903 |
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
| `chromeBrowserPssKb` | {'int': 4903} |
| `chromeGpuPssKb` | {'int': 4903} |
| `chromeOtherPssKb` | {'int': 4903} |
| `chromeProcesses` | {'int': 4903} |
| `chromeProfiles` | {'int': 4903} |
| `chromeRendererMaxPssKb` | {'int': 4903} |
| `chromeRendererPssKb` | {'int': 4903} |
| `chromeRenderers` | {'int': 4903} |
| `chromeTabs` | {'int': 4903} |
| `chromeTabsProbedProfiles` | {'int': 4903} |
| `chromeUtilityPssKb` | {'int': 4903} |
| `desktopPssKb` | {'int': 4903} |
| `hostPssKb` | {'int': 4903} |
| `kind` | {'str': 4903} |
| `memAvailableKb` | {'int': 4903} |
| `memTotalKb` | {'int': 4903} |
| `otherPssKb` | {'int': 4903} |
| `processes` | {'int': 4903} |
| `pssFallbackProcesses` | {'int': 4903} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
