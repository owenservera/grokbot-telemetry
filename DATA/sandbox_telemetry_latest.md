# sandbox_telemetry_parse — 2026-10-15 09:05:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=777358 lines=1724
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1719 |
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
| `chromeBrowserPssKb` | {'int': 1719} |
| `chromeGpuPssKb` | {'int': 1719} |
| `chromeOtherPssKb` | {'int': 1719} |
| `chromeProcesses` | {'int': 1719} |
| `chromeProfiles` | {'int': 1719} |
| `chromeRendererMaxPssKb` | {'int': 1719} |
| `chromeRendererPssKb` | {'int': 1719} |
| `chromeRenderers` | {'int': 1719} |
| `chromeTabs` | {'int': 1719} |
| `chromeTabsProbedProfiles` | {'int': 1719} |
| `chromeUtilityPssKb` | {'int': 1719} |
| `desktopPssKb` | {'int': 1719} |
| `hostPssKb` | {'int': 1719} |
| `kind` | {'str': 1719} |
| `memAvailableKb` | {'int': 1719} |
| `memTotalKb` | {'int': 1719} |
| `otherPssKb` | {'int': 1719} |
| `processes` | {'int': 1719} |
| `pssFallbackProcesses` | {'int': 1719} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
