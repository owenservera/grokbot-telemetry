# sandbox_telemetry_parse — 2026-11-25 12:23:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2755175 lines=6104
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6089 |
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
| `chromeBrowserPssKb` | {'int': 6089} |
| `chromeGpuPssKb` | {'int': 6089} |
| `chromeOtherPssKb` | {'int': 6089} |
| `chromeProcesses` | {'int': 6089} |
| `chromeProfiles` | {'int': 6089} |
| `chromeRendererMaxPssKb` | {'int': 6089} |
| `chromeRendererPssKb` | {'int': 6089} |
| `chromeRenderers` | {'int': 6089} |
| `chromeTabs` | {'int': 6089} |
| `chromeTabsProbedProfiles` | {'int': 6089} |
| `chromeUtilityPssKb` | {'int': 6089} |
| `desktopPssKb` | {'int': 6089} |
| `hostPssKb` | {'int': 6089} |
| `kind` | {'str': 6089} |
| `memAvailableKb` | {'int': 6089} |
| `memTotalKb` | {'int': 6089} |
| `otherPssKb` | {'int': 6089} |
| `processes` | {'int': 6089} |
| `pssFallbackProcesses` | {'int': 6089} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
