# sandbox_telemetry_parse — 2026-11-26 05:48:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3102508 lines=6872
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6857 |
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
| `chromeBrowserPssKb` | {'int': 6857} |
| `chromeGpuPssKb` | {'int': 6857} |
| `chromeOtherPssKb` | {'int': 6857} |
| `chromeProcesses` | {'int': 6857} |
| `chromeProfiles` | {'int': 6857} |
| `chromeRendererMaxPssKb` | {'int': 6857} |
| `chromeRendererPssKb` | {'int': 6857} |
| `chromeRenderers` | {'int': 6857} |
| `chromeTabs` | {'int': 6857} |
| `chromeTabsProbedProfiles` | {'int': 6857} |
| `chromeUtilityPssKb` | {'int': 6857} |
| `desktopPssKb` | {'int': 6857} |
| `hostPssKb` | {'int': 6857} |
| `kind` | {'str': 6857} |
| `memAvailableKb` | {'int': 6857} |
| `memTotalKb` | {'int': 6857} |
| `otherPssKb` | {'int': 6857} |
| `processes` | {'int': 6857} |
| `pssFallbackProcesses` | {'int': 6857} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
