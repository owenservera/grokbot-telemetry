# sandbox_telemetry_parse — 2026-11-09 08:38:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=574708 lines=1278
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1269 |
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
| `chromeBrowserPssKb` | {'int': 1269} |
| `chromeGpuPssKb` | {'int': 1269} |
| `chromeOtherPssKb` | {'int': 1269} |
| `chromeProcesses` | {'int': 1269} |
| `chromeProfiles` | {'int': 1269} |
| `chromeRendererMaxPssKb` | {'int': 1269} |
| `chromeRendererPssKb` | {'int': 1269} |
| `chromeRenderers` | {'int': 1269} |
| `chromeTabs` | {'int': 1269} |
| `chromeTabsProbedProfiles` | {'int': 1269} |
| `chromeUtilityPssKb` | {'int': 1269} |
| `desktopPssKb` | {'int': 1269} |
| `hostPssKb` | {'int': 1269} |
| `kind` | {'str': 1269} |
| `memAvailableKb` | {'int': 1269} |
| `memTotalKb` | {'int': 1269} |
| `otherPssKb` | {'int': 1269} |
| `processes` | {'int': 1269} |
| `pssFallbackProcesses` | {'int': 1269} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
