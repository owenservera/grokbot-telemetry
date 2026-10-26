# sandbox_telemetry_parse — 2026-10-26 16:39:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=22578 lines=54
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 49 |
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
| `chromeBrowserPssKb` | {'int': 49} |
| `chromeGpuPssKb` | {'int': 49} |
| `chromeOtherPssKb` | {'int': 49} |
| `chromeProcesses` | {'int': 49} |
| `chromeProfiles` | {'int': 49} |
| `chromeRendererMaxPssKb` | {'int': 49} |
| `chromeRendererPssKb` | {'int': 49} |
| `chromeRenderers` | {'int': 49} |
| `chromeTabs` | {'int': 49} |
| `chromeTabsProbedProfiles` | {'int': 49} |
| `chromeUtilityPssKb` | {'int': 49} |
| `desktopPssKb` | {'int': 49} |
| `hostPssKb` | {'int': 49} |
| `kind` | {'str': 49} |
| `memAvailableKb` | {'int': 49} |
| `memTotalKb` | {'int': 49} |
| `otherPssKb` | {'int': 49} |
| `processes` | {'int': 49} |
| `pssFallbackProcesses` | {'int': 49} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
