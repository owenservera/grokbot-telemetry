# sandbox_telemetry_parse — 2026-11-26 12:43:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3254988 lines=7209
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7194 |
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
| `chromeBrowserPssKb` | {'int': 7194} |
| `chromeGpuPssKb` | {'int': 7194} |
| `chromeOtherPssKb` | {'int': 7194} |
| `chromeProcesses` | {'int': 7194} |
| `chromeProfiles` | {'int': 7194} |
| `chromeRendererMaxPssKb` | {'int': 7194} |
| `chromeRendererPssKb` | {'int': 7194} |
| `chromeRenderers` | {'int': 7194} |
| `chromeTabs` | {'int': 7194} |
| `chromeTabsProbedProfiles` | {'int': 7194} |
| `chromeUtilityPssKb` | {'int': 7194} |
| `desktopPssKb` | {'int': 7194} |
| `hostPssKb` | {'int': 7194} |
| `kind` | {'str': 7194} |
| `memAvailableKb` | {'int': 7194} |
| `memTotalKb` | {'int': 7194} |
| `otherPssKb` | {'int': 7194} |
| `processes` | {'int': 7194} |
| `pssFallbackProcesses` | {'int': 7194} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
