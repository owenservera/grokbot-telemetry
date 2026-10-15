# sandbox_telemetry_parse — 2026-10-16 00:44:09 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1135794 lines=2517
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2512 |
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
| `chromeBrowserPssKb` | {'int': 2512} |
| `chromeGpuPssKb` | {'int': 2512} |
| `chromeOtherPssKb` | {'int': 2512} |
| `chromeProcesses` | {'int': 2512} |
| `chromeProfiles` | {'int': 2512} |
| `chromeRendererMaxPssKb` | {'int': 2512} |
| `chromeRendererPssKb` | {'int': 2512} |
| `chromeRenderers` | {'int': 2512} |
| `chromeTabs` | {'int': 2512} |
| `chromeTabsProbedProfiles` | {'int': 2512} |
| `chromeUtilityPssKb` | {'int': 2512} |
| `desktopPssKb` | {'int': 2512} |
| `hostPssKb` | {'int': 2512} |
| `kind` | {'str': 2512} |
| `memAvailableKb` | {'int': 2512} |
| `memTotalKb` | {'int': 2512} |
| `otherPssKb` | {'int': 2512} |
| `processes` | {'int': 2512} |
| `pssFallbackProcesses` | {'int': 2512} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
