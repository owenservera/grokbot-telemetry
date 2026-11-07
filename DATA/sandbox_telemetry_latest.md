# sandbox_telemetry_parse — 2026-11-07 06:51:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=351250 lines=784
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 775 |
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
| `chromeBrowserPssKb` | {'int': 775} |
| `chromeGpuPssKb` | {'int': 775} |
| `chromeOtherPssKb` | {'int': 775} |
| `chromeProcesses` | {'int': 775} |
| `chromeProfiles` | {'int': 775} |
| `chromeRendererMaxPssKb` | {'int': 775} |
| `chromeRendererPssKb` | {'int': 775} |
| `chromeRenderers` | {'int': 775} |
| `chromeTabs` | {'int': 775} |
| `chromeTabsProbedProfiles` | {'int': 775} |
| `chromeUtilityPssKb` | {'int': 775} |
| `desktopPssKb` | {'int': 775} |
| `hostPssKb` | {'int': 775} |
| `kind` | {'str': 775} |
| `memAvailableKb` | {'int': 775} |
| `memTotalKb` | {'int': 775} |
| `otherPssKb` | {'int': 775} |
| `processes` | {'int': 775} |
| `pssFallbackProcesses` | {'int': 775} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
