# sandbox_telemetry_parse — 2026-10-13 13:27:58 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1106443 lines=2835
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2183 |
| `chrome_profile_sample` | 644 |
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
| `chromeBrowserPssKb` | {'int': 2183} |
| `chromeGpuPssKb` | {'int': 2183} |
| `chromeOtherPssKb` | {'int': 2183} |
| `chromeProcesses` | {'int': 2183} |
| `chromeProfiles` | {'int': 2183} |
| `chromeRendererMaxPssKb` | {'int': 2183} |
| `chromeRendererPssKb` | {'int': 2183} |
| `chromeRenderers` | {'int': 2183} |
| `chromeTabs` | {'int': 2183} |
| `chromeTabsProbedProfiles` | {'int': 2183} |
| `chromeUtilityPssKb` | {'int': 2183} |
| `desktopPssKb` | {'int': 2183} |
| `hostPssKb` | {'int': 2183} |
| `kind` | {'str': 2183} |
| `memAvailableKb` | {'int': 2183} |
| `memTotalKb` | {'int': 2183} |
| `otherPssKb` | {'int': 2183} |
| `processes` | {'int': 2183} |
| `pssFallbackProcesses` | {'int': 2183} |

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
| `cpuMillicores` | {'int': 643} |
| `display` | {'int': 644} |
| `kind` | {'str': 644} |
| `processes` | {'int': 644} |
| `pssKb` | {'int': 644} |
| `rendererMaxPssKb` | {'int': 644} |
| `renderers` | {'int': 644} |
| `tabs` | {'int': 644} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
