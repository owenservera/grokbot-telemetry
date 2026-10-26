# sandbox_telemetry_parse — 2026-10-26 18:22:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=69237 lines=157
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 152 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 152} |
| `chromeGpuPssKb` | {'int': 152} |
| `chromeOtherPssKb` | {'int': 152} |
| `chromeProcesses` | {'int': 152} |
| `chromeProfiles` | {'int': 152} |
| `chromeRendererMaxPssKb` | {'int': 152} |
| `chromeRendererPssKb` | {'int': 152} |
| `chromeRenderers` | {'int': 152} |
| `chromeTabs` | {'int': 152} |
| `chromeTabsProbedProfiles` | {'int': 152} |
| `chromeUtilityPssKb` | {'int': 152} |
| `desktopPssKb` | {'int': 152} |
| `hostPssKb` | {'int': 152} |
| `kind` | {'str': 152} |
| `memAvailableKb` | {'int': 152} |
| `memTotalKb` | {'int': 152} |
| `otherPssKb` | {'int': 152} |
| `processes` | {'int': 152} |
| `pssFallbackProcesses` | {'int': 152} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
