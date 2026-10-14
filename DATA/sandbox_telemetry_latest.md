# sandbox_telemetry_parse — 2026-10-14 14:46:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=340726 lines=758
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 753 |
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
| `chromeBrowserPssKb` | {'int': 753} |
| `chromeGpuPssKb` | {'int': 753} |
| `chromeOtherPssKb` | {'int': 753} |
| `chromeProcesses` | {'int': 753} |
| `chromeProfiles` | {'int': 753} |
| `chromeRendererMaxPssKb` | {'int': 753} |
| `chromeRendererPssKb` | {'int': 753} |
| `chromeRenderers` | {'int': 753} |
| `chromeTabs` | {'int': 753} |
| `chromeTabsProbedProfiles` | {'int': 753} |
| `chromeUtilityPssKb` | {'int': 753} |
| `desktopPssKb` | {'int': 753} |
| `hostPssKb` | {'int': 753} |
| `kind` | {'str': 753} |
| `memAvailableKb` | {'int': 753} |
| `memTotalKb` | {'int': 753} |
| `otherPssKb` | {'int': 753} |
| `processes` | {'int': 753} |
| `pssFallbackProcesses` | {'int': 753} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
