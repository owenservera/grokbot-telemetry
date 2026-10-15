# sandbox_telemetry_parse — 2026-10-15 09:12:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=780522 lines=1731
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1726 |
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
| `chromeBrowserPssKb` | {'int': 1726} |
| `chromeGpuPssKb` | {'int': 1726} |
| `chromeOtherPssKb` | {'int': 1726} |
| `chromeProcesses` | {'int': 1726} |
| `chromeProfiles` | {'int': 1726} |
| `chromeRendererMaxPssKb` | {'int': 1726} |
| `chromeRendererPssKb` | {'int': 1726} |
| `chromeRenderers` | {'int': 1726} |
| `chromeTabs` | {'int': 1726} |
| `chromeTabsProbedProfiles` | {'int': 1726} |
| `chromeUtilityPssKb` | {'int': 1726} |
| `desktopPssKb` | {'int': 1726} |
| `hostPssKb` | {'int': 1726} |
| `kind` | {'str': 1726} |
| `memAvailableKb` | {'int': 1726} |
| `memTotalKb` | {'int': 1726} |
| `otherPssKb` | {'int': 1726} |
| `processes` | {'int': 1726} |
| `pssFallbackProcesses` | {'int': 1726} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
