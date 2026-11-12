# sandbox_telemetry_parse — 2026-11-12 22:33:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2355519 lines=5213
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5204 |
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
| `chromeBrowserPssKb` | {'int': 5204} |
| `chromeGpuPssKb` | {'int': 5204} |
| `chromeOtherPssKb` | {'int': 5204} |
| `chromeProcesses` | {'int': 5204} |
| `chromeProfiles` | {'int': 5204} |
| `chromeRendererMaxPssKb` | {'int': 5204} |
| `chromeRendererPssKb` | {'int': 5204} |
| `chromeRenderers` | {'int': 5204} |
| `chromeTabs` | {'int': 5204} |
| `chromeTabsProbedProfiles` | {'int': 5204} |
| `chromeUtilityPssKb` | {'int': 5204} |
| `desktopPssKb` | {'int': 5204} |
| `hostPssKb` | {'int': 5204} |
| `kind` | {'str': 5204} |
| `memAvailableKb` | {'int': 5204} |
| `memTotalKb` | {'int': 5204} |
| `otherPssKb` | {'int': 5204} |
| `processes` | {'int': 5204} |
| `pssFallbackProcesses` | {'int': 5204} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
