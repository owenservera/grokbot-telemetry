# sandbox_telemetry_parse — 2026-10-13 09:34:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=985946 lines=2457
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1994 |
| `chrome_profile_sample` | 455 |
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
| `chromeBrowserPssKb` | {'int': 1994} |
| `chromeGpuPssKb` | {'int': 1994} |
| `chromeOtherPssKb` | {'int': 1994} |
| `chromeProcesses` | {'int': 1994} |
| `chromeProfiles` | {'int': 1994} |
| `chromeRendererMaxPssKb` | {'int': 1994} |
| `chromeRendererPssKb` | {'int': 1994} |
| `chromeRenderers` | {'int': 1994} |
| `chromeTabs` | {'int': 1994} |
| `chromeTabsProbedProfiles` | {'int': 1994} |
| `chromeUtilityPssKb` | {'int': 1994} |
| `desktopPssKb` | {'int': 1994} |
| `hostPssKb` | {'int': 1994} |
| `kind` | {'str': 1994} |
| `memAvailableKb` | {'int': 1994} |
| `memTotalKb` | {'int': 1994} |
| `otherPssKb` | {'int': 1994} |
| `processes` | {'int': 1994} |
| `pssFallbackProcesses` | {'int': 1994} |

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
| `cpuMillicores` | {'int': 454} |
| `display` | {'int': 455} |
| `kind` | {'str': 455} |
| `processes` | {'int': 455} |
| `pssKb` | {'int': 455} |
| `rendererMaxPssKb` | {'int': 455} |
| `renderers` | {'int': 455} |
| `tabs` | {'int': 455} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
