# sandbox_telemetry_parse — 2026-10-15 23:24:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1106866 lines=2453
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2448 |
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
| `chromeBrowserPssKb` | {'int': 2448} |
| `chromeGpuPssKb` | {'int': 2448} |
| `chromeOtherPssKb` | {'int': 2448} |
| `chromeProcesses` | {'int': 2448} |
| `chromeProfiles` | {'int': 2448} |
| `chromeRendererMaxPssKb` | {'int': 2448} |
| `chromeRendererPssKb` | {'int': 2448} |
| `chromeRenderers` | {'int': 2448} |
| `chromeTabs` | {'int': 2448} |
| `chromeTabsProbedProfiles` | {'int': 2448} |
| `chromeUtilityPssKb` | {'int': 2448} |
| `desktopPssKb` | {'int': 2448} |
| `hostPssKb` | {'int': 2448} |
| `kind` | {'str': 2448} |
| `memAvailableKb` | {'int': 2448} |
| `memTotalKb` | {'int': 2448} |
| `otherPssKb` | {'int': 2448} |
| `processes` | {'int': 2448} |
| `pssFallbackProcesses` | {'int': 2448} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
