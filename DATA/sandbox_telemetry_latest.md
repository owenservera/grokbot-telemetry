# sandbox_telemetry_parse — 2026-11-12 20:58:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2326115 lines=5148
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5139 |
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
| `chromeBrowserPssKb` | {'int': 5139} |
| `chromeGpuPssKb` | {'int': 5139} |
| `chromeOtherPssKb` | {'int': 5139} |
| `chromeProcesses` | {'int': 5139} |
| `chromeProfiles` | {'int': 5139} |
| `chromeRendererMaxPssKb` | {'int': 5139} |
| `chromeRendererPssKb` | {'int': 5139} |
| `chromeRenderers` | {'int': 5139} |
| `chromeTabs` | {'int': 5139} |
| `chromeTabsProbedProfiles` | {'int': 5139} |
| `chromeUtilityPssKb` | {'int': 5139} |
| `desktopPssKb` | {'int': 5139} |
| `hostPssKb` | {'int': 5139} |
| `kind` | {'str': 5139} |
| `memAvailableKb` | {'int': 5139} |
| `memTotalKb` | {'int': 5139} |
| `otherPssKb` | {'int': 5139} |
| `processes` | {'int': 5139} |
| `pssFallbackProcesses` | {'int': 5139} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
