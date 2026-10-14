# sandbox_telemetry_parse — 2026-10-14 08:21:04 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=185690 lines=415
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 410 |
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
| `chromeBrowserPssKb` | {'int': 410} |
| `chromeGpuPssKb` | {'int': 410} |
| `chromeOtherPssKb` | {'int': 410} |
| `chromeProcesses` | {'int': 410} |
| `chromeProfiles` | {'int': 410} |
| `chromeRendererMaxPssKb` | {'int': 410} |
| `chromeRendererPssKb` | {'int': 410} |
| `chromeRenderers` | {'int': 410} |
| `chromeTabs` | {'int': 410} |
| `chromeTabsProbedProfiles` | {'int': 410} |
| `chromeUtilityPssKb` | {'int': 410} |
| `desktopPssKb` | {'int': 410} |
| `hostPssKb` | {'int': 410} |
| `kind` | {'str': 410} |
| `memAvailableKb` | {'int': 410} |
| `memTotalKb` | {'int': 410} |
| `otherPssKb` | {'int': 410} |
| `processes` | {'int': 410} |
| `pssFallbackProcesses` | {'int': 410} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
