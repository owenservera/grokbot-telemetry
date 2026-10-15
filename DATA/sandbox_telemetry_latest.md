# sandbox_telemetry_parse — 2026-10-15 18:06:39 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=987538 lines=2189
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2184 |
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
| `chromeBrowserPssKb` | {'int': 2184} |
| `chromeGpuPssKb` | {'int': 2184} |
| `chromeOtherPssKb` | {'int': 2184} |
| `chromeProcesses` | {'int': 2184} |
| `chromeProfiles` | {'int': 2184} |
| `chromeRendererMaxPssKb` | {'int': 2184} |
| `chromeRendererPssKb` | {'int': 2184} |
| `chromeRenderers` | {'int': 2184} |
| `chromeTabs` | {'int': 2184} |
| `chromeTabsProbedProfiles` | {'int': 2184} |
| `chromeUtilityPssKb` | {'int': 2184} |
| `desktopPssKb` | {'int': 2184} |
| `hostPssKb` | {'int': 2184} |
| `kind` | {'str': 2184} |
| `memAvailableKb` | {'int': 2184} |
| `memTotalKb` | {'int': 2184} |
| `otherPssKb` | {'int': 2184} |
| `processes` | {'int': 2184} |
| `pssFallbackProcesses` | {'int': 2184} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
