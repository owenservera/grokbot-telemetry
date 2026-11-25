# sandbox_telemetry_parse — 2026-11-26 00:28:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2994849 lines=6634
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6619 |
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
| `chromeBrowserPssKb` | {'int': 6619} |
| `chromeGpuPssKb` | {'int': 6619} |
| `chromeOtherPssKb` | {'int': 6619} |
| `chromeProcesses` | {'int': 6619} |
| `chromeProfiles` | {'int': 6619} |
| `chromeRendererMaxPssKb` | {'int': 6619} |
| `chromeRendererPssKb` | {'int': 6619} |
| `chromeRenderers` | {'int': 6619} |
| `chromeTabs` | {'int': 6619} |
| `chromeTabsProbedProfiles` | {'int': 6619} |
| `chromeUtilityPssKb` | {'int': 6619} |
| `desktopPssKb` | {'int': 6619} |
| `hostPssKb` | {'int': 6619} |
| `kind` | {'str': 6619} |
| `memAvailableKb` | {'int': 6619} |
| `memTotalKb` | {'int': 6619} |
| `otherPssKb` | {'int': 6619} |
| `processes` | {'int': 6619} |
| `pssFallbackProcesses` | {'int': 6619} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
