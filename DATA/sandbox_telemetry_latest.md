# sandbox_telemetry_parse — 2026-10-07 13:42:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1051909 lines=2311
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2306 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 2306} |
| `chromeGpuPssKb` | {'int': 2306} |
| `chromeOtherPssKb` | {'int': 2306} |
| `chromeProcesses` | {'int': 2306} |
| `chromeProfiles` | {'int': 2306} |
| `chromeRendererMaxPssKb` | {'int': 2306} |
| `chromeRendererPssKb` | {'int': 2306} |
| `chromeRenderers` | {'int': 2306} |
| `chromeTabs` | {'int': 2306} |
| `chromeTabsProbedProfiles` | {'int': 2306} |
| `chromeUtilityPssKb` | {'int': 2306} |
| `desktopPssKb` | {'int': 2306} |
| `hostPssKb` | {'int': 2306} |
| `kind` | {'str': 2306} |
| `memAvailableKb` | {'int': 2306} |
| `memTotalKb` | {'int': 2306} |
| `otherPssKb` | {'int': 2306} |
| `processes` | {'int': 2306} |
| `pssFallbackProcesses` | {'int': 2306} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
