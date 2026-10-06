# sandbox_telemetry_parse — 2026-10-06 23:02:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=655466 lines=1442
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1437 |
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
| `chromeBrowserPssKb` | {'int': 1437} |
| `chromeGpuPssKb` | {'int': 1437} |
| `chromeOtherPssKb` | {'int': 1437} |
| `chromeProcesses` | {'int': 1437} |
| `chromeProfiles` | {'int': 1437} |
| `chromeRendererMaxPssKb` | {'int': 1437} |
| `chromeRendererPssKb` | {'int': 1437} |
| `chromeRenderers` | {'int': 1437} |
| `chromeTabs` | {'int': 1437} |
| `chromeTabsProbedProfiles` | {'int': 1437} |
| `chromeUtilityPssKb` | {'int': 1437} |
| `desktopPssKb` | {'int': 1437} |
| `hostPssKb` | {'int': 1437} |
| `kind` | {'str': 1437} |
| `memAvailableKb` | {'int': 1437} |
| `memTotalKb` | {'int': 1437} |
| `otherPssKb` | {'int': 1437} |
| `processes` | {'int': 1437} |
| `pssFallbackProcesses` | {'int': 1437} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
