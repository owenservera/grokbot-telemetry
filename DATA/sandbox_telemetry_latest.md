# sandbox_telemetry_parse — 2026-11-10 02:11:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=944876 lines=2096
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2087 |
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
| `chromeBrowserPssKb` | {'int': 2087} |
| `chromeGpuPssKb` | {'int': 2087} |
| `chromeOtherPssKb` | {'int': 2087} |
| `chromeProcesses` | {'int': 2087} |
| `chromeProfiles` | {'int': 2087} |
| `chromeRendererMaxPssKb` | {'int': 2087} |
| `chromeRendererPssKb` | {'int': 2087} |
| `chromeRenderers` | {'int': 2087} |
| `chromeTabs` | {'int': 2087} |
| `chromeTabsProbedProfiles` | {'int': 2087} |
| `chromeUtilityPssKb` | {'int': 2087} |
| `desktopPssKb` | {'int': 2087} |
| `hostPssKb` | {'int': 2087} |
| `kind` | {'str': 2087} |
| `memAvailableKb` | {'int': 2087} |
| `memTotalKb` | {'int': 2087} |
| `otherPssKb` | {'int': 2087} |
| `processes` | {'int': 2087} |
| `pssFallbackProcesses` | {'int': 2087} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
