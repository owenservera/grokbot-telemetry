# sandbox_telemetry_parse — 2026-10-27 02:43:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=276676 lines=615
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 610 |
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
| `chromeBrowserPssKb` | {'int': 610} |
| `chromeGpuPssKb` | {'int': 610} |
| `chromeOtherPssKb` | {'int': 610} |
| `chromeProcesses` | {'int': 610} |
| `chromeProfiles` | {'int': 610} |
| `chromeRendererMaxPssKb` | {'int': 610} |
| `chromeRendererPssKb` | {'int': 610} |
| `chromeRenderers` | {'int': 610} |
| `chromeTabs` | {'int': 610} |
| `chromeTabsProbedProfiles` | {'int': 610} |
| `chromeUtilityPssKb` | {'int': 610} |
| `desktopPssKb` | {'int': 610} |
| `hostPssKb` | {'int': 610} |
| `kind` | {'str': 610} |
| `memAvailableKb` | {'int': 610} |
| `memTotalKb` | {'int': 610} |
| `otherPssKb` | {'int': 610} |
| `processes` | {'int': 610} |
| `pssFallbackProcesses` | {'int': 610} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
