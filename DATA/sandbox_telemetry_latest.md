# sandbox_telemetry_parse — 2026-10-15 23:20:57 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1105058 lines=2449
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2444 |
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
| `chromeBrowserPssKb` | {'int': 2444} |
| `chromeGpuPssKb` | {'int': 2444} |
| `chromeOtherPssKb` | {'int': 2444} |
| `chromeProcesses` | {'int': 2444} |
| `chromeProfiles` | {'int': 2444} |
| `chromeRendererMaxPssKb` | {'int': 2444} |
| `chromeRendererPssKb` | {'int': 2444} |
| `chromeRenderers` | {'int': 2444} |
| `chromeTabs` | {'int': 2444} |
| `chromeTabsProbedProfiles` | {'int': 2444} |
| `chromeUtilityPssKb` | {'int': 2444} |
| `desktopPssKb` | {'int': 2444} |
| `hostPssKb` | {'int': 2444} |
| `kind` | {'str': 2444} |
| `memAvailableKb` | {'int': 2444} |
| `memTotalKb` | {'int': 2444} |
| `otherPssKb` | {'int': 2444} |
| `processes` | {'int': 2444} |
| `pssFallbackProcesses` | {'int': 2444} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
