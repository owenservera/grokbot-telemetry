# sandbox_telemetry_parse — 2026-10-14 02:45:45 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=54158 lines=124
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 119 |
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
| `chromeBrowserPssKb` | {'int': 119} |
| `chromeGpuPssKb` | {'int': 119} |
| `chromeOtherPssKb` | {'int': 119} |
| `chromeProcesses` | {'int': 119} |
| `chromeProfiles` | {'int': 119} |
| `chromeRendererMaxPssKb` | {'int': 119} |
| `chromeRendererPssKb` | {'int': 119} |
| `chromeRenderers` | {'int': 119} |
| `chromeTabs` | {'int': 119} |
| `chromeTabsProbedProfiles` | {'int': 119} |
| `chromeUtilityPssKb` | {'int': 119} |
| `desktopPssKb` | {'int': 119} |
| `hostPssKb` | {'int': 119} |
| `kind` | {'str': 119} |
| `memAvailableKb` | {'int': 119} |
| `memTotalKb` | {'int': 119} |
| `otherPssKb` | {'int': 119} |
| `processes` | {'int': 119} |
| `pssFallbackProcesses` | {'int': 119} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
