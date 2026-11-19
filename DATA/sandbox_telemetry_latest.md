# sandbox_telemetry_parse — 2026-11-19 18:01:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1383386 lines=3068
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3057 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3057} |
| `chromeGpuPssKb` | {'int': 3057} |
| `chromeOtherPssKb` | {'int': 3057} |
| `chromeProcesses` | {'int': 3057} |
| `chromeProfiles` | {'int': 3057} |
| `chromeRendererMaxPssKb` | {'int': 3057} |
| `chromeRendererPssKb` | {'int': 3057} |
| `chromeRenderers` | {'int': 3057} |
| `chromeTabs` | {'int': 3057} |
| `chromeTabsProbedProfiles` | {'int': 3057} |
| `chromeUtilityPssKb` | {'int': 3057} |
| `desktopPssKb` | {'int': 3057} |
| `hostPssKb` | {'int': 3057} |
| `kind` | {'str': 3057} |
| `memAvailableKb` | {'int': 3057} |
| `memTotalKb` | {'int': 3057} |
| `otherPssKb` | {'int': 3057} |
| `processes` | {'int': 3057} |
| `pssFallbackProcesses` | {'int': 3057} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
