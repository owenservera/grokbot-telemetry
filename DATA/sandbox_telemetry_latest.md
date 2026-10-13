# sandbox_telemetry_parse — 2026-10-13 16:02:09 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1152413 lines=2979
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2255 |
| `chrome_profile_sample` | 716 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 2255} |
| `chromeGpuPssKb` | {'int': 2255} |
| `chromeOtherPssKb` | {'int': 2255} |
| `chromeProcesses` | {'int': 2255} |
| `chromeProfiles` | {'int': 2255} |
| `chromeRendererMaxPssKb` | {'int': 2255} |
| `chromeRendererPssKb` | {'int': 2255} |
| `chromeRenderers` | {'int': 2255} |
| `chromeTabs` | {'int': 2255} |
| `chromeTabsProbedProfiles` | {'int': 2255} |
| `chromeUtilityPssKb` | {'int': 2255} |
| `desktopPssKb` | {'int': 2255} |
| `hostPssKb` | {'int': 2255} |
| `kind` | {'str': 2255} |
| `memAvailableKb` | {'int': 2255} |
| `memTotalKb` | {'int': 2255} |
| `otherPssKb` | {'int': 2255} |
| `processes` | {'int': 2255} |
| `pssFallbackProcesses` | {'int': 2255} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 715} |
| `display` | {'int': 716} |
| `kind` | {'str': 716} |
| `processes` | {'int': 716} |
| `pssKb` | {'int': 716} |
| `rendererMaxPssKb` | {'int': 716} |
| `renderers` | {'int': 716} |
| `tabs` | {'int': 716} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
