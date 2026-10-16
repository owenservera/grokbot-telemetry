# sandbox_telemetry_parse — 2026-10-16 16:49:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=643186 lines=2404
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1590 |
| `memory_sample` | 805 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `chromeBrowserPssKb` | {'int': 805} |
| `chromeGpuPssKb` | {'int': 805} |
| `chromeOtherPssKb` | {'int': 805} |
| `chromeProcesses` | {'int': 805} |
| `chromeProfiles` | {'int': 805} |
| `chromeRendererMaxPssKb` | {'int': 805} |
| `chromeRendererPssKb` | {'int': 805} |
| `chromeRenderers` | {'int': 805} |
| `chromeTabs` | {'int': 805} |
| `chromeTabsProbedProfiles` | {'int': 805} |
| `chromeUtilityPssKb` | {'int': 805} |
| `desktopPssKb` | {'int': 805} |
| `hostPssKb` | {'int': 805} |
| `kind` | {'str': 805} |
| `memAvailableKb` | {'int': 805} |
| `memTotalKb` | {'int': 805} |
| `otherPssKb` | {'int': 805} |
| `processes` | {'int': 805} |
| `pssFallbackProcesses` | {'int': 805} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 1587} |
| `display` | {'int': 1590} |
| `kind` | {'str': 1590} |
| `processes` | {'int': 1590} |
| `pssKb` | {'int': 1590} |
| `rendererMaxPssKb` | {'int': 1590} |
| `renderers` | {'int': 1590} |
| `tabs` | {'int': 1589} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
