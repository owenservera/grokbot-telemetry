# sandbox_telemetry_parse — 2026-10-07 11:54:09 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1002661 lines=2203
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2198 |
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
| `chromeBrowserPssKb` | {'int': 2198} |
| `chromeGpuPssKb` | {'int': 2198} |
| `chromeOtherPssKb` | {'int': 2198} |
| `chromeProcesses` | {'int': 2198} |
| `chromeProfiles` | {'int': 2198} |
| `chromeRendererMaxPssKb` | {'int': 2198} |
| `chromeRendererPssKb` | {'int': 2198} |
| `chromeRenderers` | {'int': 2198} |
| `chromeTabs` | {'int': 2198} |
| `chromeTabsProbedProfiles` | {'int': 2198} |
| `chromeUtilityPssKb` | {'int': 2198} |
| `desktopPssKb` | {'int': 2198} |
| `hostPssKb` | {'int': 2198} |
| `kind` | {'str': 2198} |
| `memAvailableKb` | {'int': 2198} |
| `memTotalKb` | {'int': 2198} |
| `otherPssKb` | {'int': 2198} |
| `processes` | {'int': 2198} |
| `pssFallbackProcesses` | {'int': 2198} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
