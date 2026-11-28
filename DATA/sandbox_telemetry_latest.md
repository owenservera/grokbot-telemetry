# sandbox_telemetry_parse — 2026-11-28 21:31:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1068920 lines=2369
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2361 |
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
| `chromeBrowserPssKb` | {'int': 2361} |
| `chromeGpuPssKb` | {'int': 2361} |
| `chromeOtherPssKb` | {'int': 2361} |
| `chromeProcesses` | {'int': 2361} |
| `chromeProfiles` | {'int': 2361} |
| `chromeRendererMaxPssKb` | {'int': 2361} |
| `chromeRendererPssKb` | {'int': 2361} |
| `chromeRenderers` | {'int': 2361} |
| `chromeTabs` | {'int': 2361} |
| `chromeTabsProbedProfiles` | {'int': 2361} |
| `chromeUtilityPssKb` | {'int': 2361} |
| `desktopPssKb` | {'int': 2361} |
| `hostPssKb` | {'int': 2361} |
| `kind` | {'str': 2361} |
| `memAvailableKb` | {'int': 2361} |
| `memTotalKb` | {'int': 2361} |
| `otherPssKb` | {'int': 2361} |
| `processes` | {'int': 2361} |
| `pssFallbackProcesses` | {'int': 2361} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
