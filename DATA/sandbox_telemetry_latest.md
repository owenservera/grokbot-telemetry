# sandbox_telemetry_parse — 2026-11-24 08:39:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2210095 lines=4899
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4884 |
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
| `chromeBrowserPssKb` | {'int': 4884} |
| `chromeGpuPssKb` | {'int': 4884} |
| `chromeOtherPssKb` | {'int': 4884} |
| `chromeProcesses` | {'int': 4884} |
| `chromeProfiles` | {'int': 4884} |
| `chromeRendererMaxPssKb` | {'int': 4884} |
| `chromeRendererPssKb` | {'int': 4884} |
| `chromeRenderers` | {'int': 4884} |
| `chromeTabs` | {'int': 4884} |
| `chromeTabsProbedProfiles` | {'int': 4884} |
| `chromeUtilityPssKb` | {'int': 4884} |
| `desktopPssKb` | {'int': 4884} |
| `hostPssKb` | {'int': 4884} |
| `kind` | {'str': 4884} |
| `memAvailableKb` | {'int': 4884} |
| `memTotalKb` | {'int': 4884} |
| `otherPssKb` | {'int': 4884} |
| `processes` | {'int': 4884} |
| `pssFallbackProcesses` | {'int': 4884} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
