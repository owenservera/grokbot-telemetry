# sandbox_telemetry_parse — 2026-10-15 02:13:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=610570 lines=1355
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1350 |
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
| `chromeBrowserPssKb` | {'int': 1350} |
| `chromeGpuPssKb` | {'int': 1350} |
| `chromeOtherPssKb` | {'int': 1350} |
| `chromeProcesses` | {'int': 1350} |
| `chromeProfiles` | {'int': 1350} |
| `chromeRendererMaxPssKb` | {'int': 1350} |
| `chromeRendererPssKb` | {'int': 1350} |
| `chromeRenderers` | {'int': 1350} |
| `chromeTabs` | {'int': 1350} |
| `chromeTabsProbedProfiles` | {'int': 1350} |
| `chromeUtilityPssKb` | {'int': 1350} |
| `desktopPssKb` | {'int': 1350} |
| `hostPssKb` | {'int': 1350} |
| `kind` | {'str': 1350} |
| `memAvailableKb` | {'int': 1350} |
| `memTotalKb` | {'int': 1350} |
| `otherPssKb` | {'int': 1350} |
| `processes` | {'int': 1350} |
| `pssFallbackProcesses` | {'int': 1350} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
