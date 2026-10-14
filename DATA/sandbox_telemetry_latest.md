# sandbox_telemetry_parse — 2026-10-14 15:11:05 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=350218 lines=779
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 774 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 774} |
| `chromeGpuPssKb` | {'int': 774} |
| `chromeOtherPssKb` | {'int': 774} |
| `chromeProcesses` | {'int': 774} |
| `chromeProfiles` | {'int': 774} |
| `chromeRendererMaxPssKb` | {'int': 774} |
| `chromeRendererPssKb` | {'int': 774} |
| `chromeRenderers` | {'int': 774} |
| `chromeTabs` | {'int': 774} |
| `chromeTabsProbedProfiles` | {'int': 774} |
| `chromeUtilityPssKb` | {'int': 774} |
| `desktopPssKb` | {'int': 774} |
| `hostPssKb` | {'int': 774} |
| `kind` | {'str': 774} |
| `memAvailableKb` | {'int': 774} |
| `memTotalKb` | {'int': 774} |
| `otherPssKb` | {'int': 774} |
| `processes` | {'int': 774} |
| `pssFallbackProcesses` | {'int': 774} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
